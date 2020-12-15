const models = require("../../src/js/models");
const Table = require("cli-table3");
const _ = require("lodash-node");
const chalk = require("chalk");



module.exports = {
    run: (async () => {
            const usersList = await models.Customer.findAll();
            console.log(chalk.magneta(`Customer list`));
            console.log((customerList));

            const respondents = await models.Expert.findAll();
            console.log(chalk.magneta(`Experts list`));
            console.log(expert));

            const correctAnswers = await models.CorrectAnswer.findAll();
            console.log(chalk.green(`Answers list`));
            console.log((correctAnswers));

            const incorrectAnswers = await models.IncorrectAnswer.findAll();
            console.log(chalk.magneta(`Question list`));
            console.log((incorrectAnswers));

            const questionTypesList = await models.Report.findAll();
            console.log(chalk.magneta(`Question types list`));
            console.log((questionTypesList));


        }
    )
};
